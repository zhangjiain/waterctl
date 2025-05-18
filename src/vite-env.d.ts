/// <reference types="vite/client" />

declare const VERSION: string;

declare interface Window {
  deferredPrompt: BeforeInstallPromptEvent | null;
}

interface BeforeInstallPromptEvent extends Event {
  readonly platforms: string[];
  readonly userChoice: Promise<{
    outcome: "accepted" | "dismissed";
    platform: string;
  }>;
  prompt(): Promise<void>;
}

interface WindowEventMap {
  beforeinstallprompt: BeforeInstallPromptEvent;
}

// see solvers.ts
declare module "node:fs" {
  export function readFileSync(path: string | URL, options?: { encoding?: null; flag?: string; }): Buffer;
}
