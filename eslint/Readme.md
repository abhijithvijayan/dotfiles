# eslint-config-onepass


I use my own fork of wesbos's `eslint-config-wesbos`

The package is available in npm for installation
https://www.npmjs.com/package/eslint-config-onepass

## Install Globally

```
npx install-peerdeps --global eslint-config-onepass
```

In your `~/.eslintrc.json` file, it should look like this:
```
{
  "extends": ["onepass"]
}
```

### With VSCode


- Install the [ESLint package](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- Install the [Prettier package](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- Now we need to setup some VS Code settings via `Code/File → Preferences → Settings`. It's easier to enter these settings while editing the settings.json file, so click the `{}` icon in the top right corner:


```
"editor.formatOnSave": true,
"[javascript]": {
  "editor.formatOnSave": false
},
"[javascriptreact]": {
  "editor.formatOnSave": false
},
"eslint.autoFixOnSave": true,
"prettier.disableLanguages": ["javascript", "javascriptreact"],
```

<hr />

Refer Original [Readme](https://github.com/onepassapp/eslint-config-onepass#readme) for Full Documentation