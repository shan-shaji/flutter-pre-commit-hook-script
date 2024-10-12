# Flutter Lint Check

## Description

Flutter Lint Check is a bash script designed to automate formatting and analysis checks for Flutter projects. It examines changed Dart files in specified folders, ensuring they meet formatting standards and pass static analysis.

## Purpose

The primary purpose of this script is to provide an easy-to-use tool for Flutter developers to maintain code quality in their projects. By integrating this script into your Git hooks, you can automatically check for formatting and analysis issues before committing changes.

## Features

- Checks for the availability of `dart` and `flutter` commands
- Examines changed files in specified folders (currently "lib" and "test")
- Performs formatting checks using `dart format`
- Runs static analysis using `flutter analyze`
- Reports files that need formatting or have analysis issues

## Easy Installation


```bash

curl -fsSl https://raw.githubusercontent.com/shan-shaji/flutter-pre-commit-hook-script/refs/heads/main/setup.sh | /bin/bash

```


## Manual Installation

1. Create a new folder `.githooks` in your root directory
2. Copy the script file to `.githooks` folder. Name the file as `pre-commit`.
3. Make the script executable:

   ```
   chmod +x `.githooks/pre-commit`
   ```

4. Configure Git to use the .githooks folder for Git hooks:
     ```bash

     git config core.hooksPath .githooks
     
     ```

## Usage

Once installed and set up as a pre-commit hook, the script will run automatically before each commit. If any formatting or analysis issues are found, the commit will be blocked, and you'll see a report of the files that need attention.

To run the script manually:

```
./flutter_lint_check.sh
```

## Customization

You can customize the script by modifying the following variables:

- `BRANCH_DEST`: The branch to compare changes against (default is "main")
- `FOLDERS_TO_CHECK`: An array of folders to check for Dart files (default is "lib" and "test")

## Future Plans

There are plans to add more checks and features to this script in the future. Stay tuned for updates!

## Contributing

Contributions to improve the script or add new features are welcome. Please feel free to submit pull requests or open issues on the GitHub repository.

