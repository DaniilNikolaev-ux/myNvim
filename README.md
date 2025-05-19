# Конфигурация Neovim | Neovim Configuration

<div align="center">
  <img src="https://neovim.io/images/logo@2x.png" alt="Neovim Logo" width="200"/>
  <br>
  <strong>Современная конфигурация Neovim на Lua | Modern Neovim Configuration in Lua</strong>
</div>

---

<details open>
<summary><b>Русский</b></summary>

## Обзор

Это моя личная конфигурация Neovim, основанная на менеджере плагинов lazy.nvim и написанная на Lua. Конфигурация включает в себя поддержку LSP, автодополнение, продвинутую подсветку синтаксиса и множество других возможностей.

## Установка

### Предварительные требования
- Neovim 0.8.0 или выше
- Git
- [Рекомендуется] Nerd Font для корректного отображения иконок

### Шаги установки

1. Сначала убедитесь, что у вас установлен Neovim версии 0.8.0 или выше:
   ```bash
   nvim --version
   ```

2. Создайте резервную копию вашей текущей конфигурации (если она существует):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

3. Клонируйте репозиторий в директорию конфигурации Neovim:
   ```bash
   git clone https://github.com/DaniilNikolaev-ux/neovim-config.git ~/.config/nvim
   ```

4. Запустите Neovim:
   ```bash
   nvim
   ```

   При первом запуске lazy.nvim автоматически установит все плагины.

5. Для корректной работы LSP установите необходимые языковые серверы:
   - Откройте Neovim
   - Выполните команду `:Mason`
   - Установите нужные языковые серверы (lua_ls, pyright и другие)

### Возможные проблемы

- **Отсутствующие иконки**: Установите Nerd Font и настройте ваш терминал для его использования
- **Ошибки LSP**: Убедитесь, что соответствующие языковые серверы установлены через Mason
- **Проблемы с Treesitter**: Выполните `:TSUpdate` для обновления парсеров

## Структура конфигурации

```
.
├── init.lua                 # Основной файл инициализации
├── lazy-lock.json           # Файл блокировки версий плагинов
└── lua/                     # Директория с Lua модулями
    ├── config/              # Конфигурации ядра
    │   └── lazy.lua         # Настройка lazy.nvim
    ├── config.lua           # Базовые настройки Neovim
    └── plugins/             # Конфигурации плагинов
        ├── autopairs.lua    # Автоматические парные скобки/кавычки
        ├── autosuggestion.lua # Автодополнение кода
        ├── harpoon.lua      # Быстрая навигация между файлами
        ├── lsp-config.lua   # Настройка Language Server Protocol
        ├── lualine.lua      # Статусная строка
        ├── neotree.lua      # Файловый менеджер
        ├── telescope.lua    # Поиск файлов и текста
        ├── theme.lua        # Тема оформления
        └── treesitter.lua   # Парсер синтаксиса
```

## Базовые настройки

- **Отступы**: 2 пробела
- **Клавиша-лидер**: Пробел

## Плагины

### Менеджер плагинов
- **lazy.nvim** - Современный менеджер плагинов с ленивой загрузкой

### Интерфейс и визуальные улучшения
- **tokyonight.nvim** - Темная тема с поддержкой различных плагинов
- **lualine.nvim** - Настраиваемая статусная строка (тема: dracula)
- **nvim-web-devicons** - Иконки для файлов и директорий

### Навигация и управление файлами
- **neo-tree.nvim** - Файловый менеджер с поддержкой git
- **harpoon** - Быстрый доступ к часто используемым файлам
- **telescope.nvim** - Универсальный инструмент для поиска файлов и текста

### Редактирование и синтаксис
- **nvim-treesitter** - Продвинутая подсветка синтаксиса и манипуляции с кодом
- **nvim-treesitter-refactor** - Инструменты для рефакторинга кода
- **nvim-autopairs** - Автоматическое закрытие скобок и кавычек

### LSP (Language Server Protocol)
- **nvim-lspconfig** - Конфигурация для различных языковых серверов
- **mason.nvim** - Менеджер установки LSP серверов
- **mason-lspconfig.nvim** - Интеграция mason с lspconfig

### Автодополнение
- **nvim-cmp** - Движок автодополнения
- **cmp-buffer** - Источник автодополнения из текущего буфера
- **cmp-path** - Автодополнение путей файловой системы
- **cmp-nvim-lsp** - Автодополнение из LSP
- **cmp-cmdline** - Автодополнение командной строки
- **LuaSnip** - Движок сниппетов
- **cmp_luasnip** - Интеграция LuaSnip с nvim-cmp

## Горячие клавиши

### Основные
- `Space` - Клавиша-лидер

### Файловый менеджер
- `<C-t>` - Открыть/закрыть Neo-tree

### Telescope (поиск)
- `<C-,>` - Поиск файлов
- `<leader>fg` - Поиск текста во всех файлах (grep)
- `<leader>fb` - Список открытых буферов
- `<leader>fh` - Поиск по справке

### Harpoon (быстрый доступ к файлам)
- `<leader>ha` - Добавить файл в список
- `<leader>hh` - Открыть меню Harpoon
- `<leader>1` - Перейти к файлу 1
- `<leader>2` - Перейти к файлу 2
- `<leader>hn` - Перейти к следующему файлу в списке
- `<leader>hp` - Перейти к предыдущему файлу в списке
- `<leader>ht` - Открыть список файлов в Telescope

### LSP (языковые серверы)
- `K` - Показать информацию о символе под курсором
- `gd` - Перейти к определению
- `<leader>ca` - Показать доступные действия с кодом

### Автодополнение
- `<C-b>` - Прокрутить документацию вверх
- `<C-f>` - Прокрутить документацию вниз
- `<C-Space>` - Показать список автодополнения
- `<C-e>` - Закрыть список автодополнения
- `<CR>` (Enter) - Подтвердить выбор

## Настроенные языковые серверы
- **lua_ls** - Lua
- **pyright** - Python

## Установленные парсеры Treesitter
- Python
- Lua
- Bash
- Markdown
</details>

---

<details>
<summary><b>English</b></summary>

## Overview

This is my personal Neovim configuration, based on the lazy.nvim plugin manager and written in Lua. The configuration includes LSP support, auto-completion, advanced syntax highlighting, and many other features.

## Installation

### Prerequisites
- Neovim 0.8.0 or higher
- Git
- [Recommended] Nerd Font for proper icon display

### Installation Steps

1. First, make sure you have Neovim 0.8.0 or higher installed:
   ```bash
   nvim --version
   ```

2. Backup your current Neovim configuration (if it exists):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

3. Clone the repository to your Neovim configuration directory:
   ```bash
   git clone https://github.com/DaniilNikolaev-ux/neovim-config.git ~/.config/nvim
   ```

4. Launch Neovim:
   ```bash
   nvim
   ```

   On first launch, lazy.nvim will automatically install all plugins.

5. For LSP functionality to work properly, install the required language servers:
   - Open Neovim
   - Run the command `:Mason`
   - Install the desired language servers (lua_ls, pyright, etc.)

### Troubleshooting

- **Missing icons**: Install a Nerd Font and configure your terminal to use it
- **LSP errors**: Make sure the corresponding language servers are installed via Mason
- **Treesitter issues**: Run `:TSUpdate` to update parsers

## Configuration Structure

```
.
├── init.lua                 # Main initialization file
├── lazy-lock.json           # Plugin version lock file
└── lua/                     # Lua modules directory
    ├── config/              # Core configurations
    │   └── lazy.lua         # lazy.nvim setup
    ├── config.lua           # Basic Neovim settings
    └── plugins/             # Plugin configurations
        ├── autopairs.lua    # Automatic brackets/quotes
        ├── autosuggestion.lua # Code completion
        ├── harpoon.lua      # Quick file navigation
        ├── lsp-config.lua   # Language Server Protocol setup
        ├── lualine.lua      # Status line
        ├── neotree.lua      # File manager
        ├── telescope.lua    # File and text search
        ├── theme.lua        # Theme configuration
        └── treesitter.lua   # Syntax parser
```

## Basic Settings

- **Indentation**: 2 spaces
- **Leader key**: Space

## Plugins

### Plugin Manager
- **lazy.nvim** - Modern plugin manager with lazy loading

### Interface and Visual Enhancements
- **tokyonight.nvim** - Dark theme with support for various plugins
- **lualine.nvim** - Customizable status line (theme: dracula)
- **nvim-web-devicons** - Icons for files and directories

### Navigation and File Management
- **neo-tree.nvim** - File manager with git support
- **harpoon** - Quick access to frequently used files
- **telescope.nvim** - Universal tool for file and text search

### Editing and Syntax
- **nvim-treesitter** - Advanced syntax highlighting and code manipulation
- **nvim-treesitter-refactor** - Code refactoring tools
- **nvim-autopairs** - Automatic closing of brackets and quotes

### LSP (Language Server Protocol)
- **nvim-lspconfig** - Configuration for various language servers
- **mason.nvim** - LSP server installation manager
- **mason-lspconfig.nvim** - Integration of mason with lspconfig

### Auto-completion
- **nvim-cmp** - Auto-completion engine
- **cmp-buffer** - Auto-completion source from current buffer
- **cmp-path** - File system path auto-completion
- **cmp-nvim-lsp** - Auto-completion from LSP
- **cmp-cmdline** - Command line auto-completion
- **LuaSnip** - Snippet engine
- **cmp_luasnip** - Integration of LuaSnip with nvim-cmp

## Keybindings

### Core
- `Space` - Leader key

### File Manager
- `<C-t>` - Open/close Neo-tree

### Telescope (search)
- `<C-,>` - Search files
- `<leader>fg` - Search text in all files (grep)
- `<leader>fb` - List open buffers
- `<leader>fh` - Search help documentation

### Harpoon (quick file access)
- `<leader>ha` - Add file to list
- `<leader>hh` - Open Harpoon menu
- `<leader>1` - Go to file 1
- `<leader>2` - Go to file 2
- `<leader>hn` - Go to next file in list
- `<leader>hp` - Go to previous file in list
- `<leader>ht` - Open file list in Telescope

### LSP (language servers)
- `K` - Show information about symbol under cursor
- `gd` - Go to definition
- `<leader>ca` - Show available code actions

### Auto-completion
- `<C-b>` - Scroll documentation up
- `<C-f>` - Scroll documentation down
- `<C-Space>` - Show auto-completion list
- `<C-e>` - Close auto-completion list
- `<CR>` (Enter) - Confirm selection

## Configured Language Servers
- **lua_ls** - Lua
- **pyright** - Python

## Installed Treesitter Parsers
- Python
- Lua
- Bash
- Markdown
</details>

---

<div align="center">
  <p><strong>Made with ♥ for Neovim</strong></p>
</div> 