import "water.css/out/light.min.css";
import "./styles.css";
import "./writeValueLogging";
import { handleButtonClick } from "./bluetooth";
import { registerServiceWorker, resizeWindow, setupInstallButton } from "./pwaHelper";
import * as Sentry from "@sentry/browser";

Sentry.init({
  dsn: "https://d07163d14d3078ebd0f9479584e00ced@o4508910681325568.ingest.de.sentry.io/4508910684143696",
});

(document.getElementById("version") as HTMLSpanElement).innerText = " · v" + VERSION;

if (!navigator.bluetooth) {
  (document.querySelector(".supported") as HTMLElement).style.display = "none";
  (document.querySelector(".unsupported") as HTMLElement).style.display = "block";
}

document.addEventListener("DOMContentLoaded", () => {
  const mainButton = document.getElementById("main-button") as HTMLButtonElement;
  mainButton.addEventListener("click", handleButtonClick);
});

// PWA
registerServiceWorker();
setupInstallButton();
resizeWindow();
