export const registerServiceWorker = () => {
  if (navigator.serviceWorker && !navigator.serviceWorker.controller && location.protocol === "https:") {
    navigator.serviceWorker.register("serviceworker.js");
  }
};

// pwa install prompt
export const setupInstallButton = () => {
  const installButton = document.getElementById("install-button")!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! as HTMLButtonElement;

  window.addEventListener("beforeinstallprompt", (event) => {
    event.preventDefault();
    window.deferredPrompt = event;
    installButton.hidden = false;
  });

  installButton.addEventListener("click", async () => {
    const promptEvent = window.deferredPrompt;
    if (!promptEvent) {
      return;
    }
    promptEvent.prompt();
    // @ts-expect-error: we don't care about the result
    const result = await promptEvent.userChoice;
    window.deferredPrompt = null;
    installButton.hidden = true;
  });

  window.addEventListener("appinstalled", () => {
    window.deferredPrompt = null;
  });
};

// auto resize for desktop
export const resizeWindow = () => {
  window.resizeTo(538, 334);
};
