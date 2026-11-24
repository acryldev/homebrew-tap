# ACRYL Homebrew tap

```sh
brew install acryldev/tap/acryl
acryl          # ACRYL Control Center: pick terminal, window or browser
acryl --gui    # straight to the desktop window; "Add to Applications" from there
```

The formula installs the `acryl` command from npm (MIT, source at https://github.com/acryldev/acryl). No Gatekeeper prompt: nothing is
browser-downloaded. Other ways: `curl -fsSL https://acryl.dev/install.sh | bash` (the app itself), or `npx acryl@latest`.
