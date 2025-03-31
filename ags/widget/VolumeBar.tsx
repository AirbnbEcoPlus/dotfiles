import { Gdk, Gtk } from "astal/gtk3";
import Wp from "gi://AstalWp";  // Importation de la bibliothèque WirePlumber

export function createVolumeBar() {
    const audio = Wp.get_default()!.audio;  // Récupération de l'objet audio via WirePlumber

    const volumeBar = new Gtk.Scale({ orientation: Gtk.Orientation.HORIZONTAL });
    volumeBar.set_range(0, 100);

    // Fonction pour mettre à jour la barre de volume avec la valeur actuelle du volume
    function updateVolume() {
        const currentVolume = audio.default_speaker.volume * 100;  // Récupère le volume actuel du haut-parleur
        volumeBar.set_value(currentVolume);  // Met à jour la barre de volume
    }

    updateVolume();  // Appel initial pour définir la valeur de la barre de volume

    // Connexion de l'événement pour modifier le volume lorsque l'utilisateur ajuste la barre
    volumeBar.connect("value-changed", (widget) => {
        const value = Math.round(widget.get_value()) / 100;  // Récupère la valeur du slider et la convertit en proportion
        audio.default_speaker.volume = value;  // Modifie le volume du haut-parleur
    });

    return volumeBar;
}