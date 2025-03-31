import { Gdk, Gtk } from "astal/gtk3";
import { exec } from "child_process"; 



export function createBrightnessBar() {
    const brightnessBar = new Gtk.Scale({ orientation: Gtk.Orientation.HORIZONTAL });
    brightnessBar.set_range(0, 100);

    function updateBrightness() {
        exec("brightnessctl g", (error, stdout) => {
            if (error) return;
            const brightness = parseInt(stdout); 
            brightnessBar.set_value(brightness);
        });
    }

    updateBrightness();

    brightnessBar.connect("value-changed", (widget) => {
        const value = Math.round(widget.get_value());
        exec(`brightnessctl s ${value}%`);
    });

    return brightnessBar;
}
