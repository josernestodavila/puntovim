Instalación:
   ``` bash
   git clone git://github.com/josernestodavila/puntovim.git ~/.vim
   ```
Crear enlaces simbólicos:
   ``` bash
   ln -s ~/.vim/vimrc ~/.vimrc
   ```

Cambiar al directorio '~/.vim' y obtener los submódulos:
   ``` bash
   cd ~/.vim
   git submodule init
   git submodule update
   ```

Actualizar los submódulos:
   ``` bash
   cd ~/.vim
   git submodule foreach git pull origin master
   git submodule update

   cd bundle/jedi
   git submodule foreach git pull origin master
   git submodule update
   ```
