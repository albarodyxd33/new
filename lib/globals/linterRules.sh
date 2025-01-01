#!/usr/bin/env bash

LINTER_RULES_PATH="${LINTER_RULES_PATH:-.github/linters}" # Linter rules directory

# shellcheck disable=SC2034  # Variable is referenced indirectly
ANSIBLE_FILE_NAME="${ANSIBLE_CONFIG_FILE:-.ansible-lint.yml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
ARM_FILE_NAME=".arm-ttk.psd1"
BASH_FILE_NAME="${BASH_FILE_NAME:-".shellcheckrc"}"
BASH_SEVERITY="${BASH_SEVERITY:-""}"
CHECKOV_FILE_NAME="${CHECKOV_FILE_NAME:-".checkov.yaml"}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
CLANG_FORMAT_FILE_NAME="${CLANG_FORMAT_FILE_NAME:-".clang-format"}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
CLOJURE_FILE_NAME=".clj-kondo/config.edn"
# shellcheck disable=SC2034  # Variable is referenced indirectly
CLOUDFORMATION_FILE_NAME=".cfnlintrc.yml"
# shellcheck disable=SC2034  # Variable is referenced indirectly
COFFEESCRIPT_FILE_NAME=".coffee-lint.json"
CSS_FILE_NAME="${CSS_FILE_NAME:-.stylelintrc.json}"
DOCKERFILE_HADOLINT_FILE_NAME="${DOCKERFILE_HADOLINT_FILE_NAME:-.hadolint.yaml}"
EDITORCONFIG_FILE_NAME="${EDITORCONFIG_FILE_NAME:-.ecrc}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
GITHUB_ACTIONS_FILE_NAME="${GITHUB_ACTIONS_CONFIG_FILE:-actionlint.yml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
GITHUB_ACTIONS_COMMAND_ARGS="${GITHUB_ACTIONS_COMMAND_ARGS:-null}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
GITLEAKS_FILE_NAME="${GITLEAKS_CONFIG_FILE:-.gitleaks.toml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
GHERKIN_FILE_NAME=".gherkin-lintrc"
# shellcheck disable=SC2034  # Variable is referenced indirectly
GO_FILE_NAME=".golangci.yml"
# shellcheck disable=SC2034  # Variable is referenced indirectly
GROOVY_FILE_NAME=".groovylintrc.json"
# shellcheck disable=SC2034  # Variable is referenced indirectly
HTML_FILE_NAME=".htmlhintrc"
# shellcheck disable=SC2034  # Variable is referenced indirectly
JAVA_FILE_NAME="${JAVA_FILE_NAME:-sun_checks.xml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
JAVASCRIPT_ES_FILE_NAME="${JAVASCRIPT_ES_CONFIG_FILE:-.eslintrc.yml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
JAVASCRIPT_STANDARD_FILE_NAME="${JAVASCRIPT_ES_CONFIG_FILE:-.eslintrc.yml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
JSCPD_FILE_NAME="${JSCPD_CONFIG_FILE:-.jscpd.json}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
JSX_FILE_NAME="${JAVASCRIPT_ES_CONFIG_FILE:-.eslintrc.yml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
KUBERNETES_KUBECONFORM_OPTIONS="${KUBERNETES_KUBECONFORM_OPTIONS:-null}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
LATEX_FILE_NAME=".chktexrc"
# shellcheck disable=SC2034  # Variable is referenced indirectly
LUA_FILE_NAME=".luacheckrc"
MARKDOWN_CUSTOM_RULE_GLOBS="${MARKDOWN_CUSTOM_RULE_GLOBS:-""}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
MARKDOWN_FILE_NAME="${MARKDOWN_CONFIG_FILE:-.markdown-lint.yml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
JUPYTER_NBQA_FILE_NAME="${JUPYTER_NBQA_CONFIG_FILE:-.jupyter-nbqa.toml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
OPENAPI_FILE_NAME=".openapirc.yml"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PERL_PERLCRITIC_OPTIONS="${PERL_PERLCRITIC_OPTIONS:-null}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PHP_BUILTIN_FILE_NAME="${PHP_CONFIG_FILE:-php.ini}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PHP_PHPCS_FILE_NAME="${PHP_PHPCS_FILE_NAME:-phpcs.xml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PHP_PHPSTAN_FILE_NAME="${PHP_PHPSTAN_CONFIG_FILE:-phpstan.neon}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PHP_PSALM_FILE_NAME="psalm.xml"
# shellcheck disable=SC2034  # Variable is referenced indirectly
POWERSHELL_FILE_NAME="${POWERSHELL_CONFIG_FILE:-.powershell-psscriptanalyzer.psd1}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PROTOBUF_FILE_NAME="${PROTOBUF_CONFIG_FILE:-.protolintrc.yml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PYTHON_BLACK_FILE_NAME="${PYTHON_BLACK_CONFIG_FILE:-.python-black}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PYTHON_FLAKE8_FILE_NAME="${PYTHON_FLAKE8_CONFIG_FILE:-.flake8}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PYTHON_ISORT_FILE_NAME="${PYTHON_ISORT_CONFIG_FILE:-.isort.cfg}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PYTHON_MYPY_FILE_NAME="${PYTHON_MYPY_CONFIG_FILE:-.mypy.ini}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PYTHON_PYINK_FILE_NAME="${PYTHON_PYINK_CONFIG_FILE:-.python-pyink}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PYTHON_PYLINT_FILE_NAME="${PYTHON_PYLINT_CONFIG_FILE:-.python-lint}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
PYTHON_RUFF_FILE_NAME="${PYTHON_RUFF_CONFIG_FILE:-.ruff.toml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
R_FILE_NAME=".lintr"
# shellcheck disable=SC2034  # Variable is referenced indirectly
RUBY_FILE_NAME="${RUBY_CONFIG_FILE:-.ruby-lint.yml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
SCALAFMT_FILE_NAME="${SCALAFMT_CONFIG_FILE:-.scalafmt.conf}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
SNAKEMAKE_SNAKEFMT_FILE_NAME="${SNAKEMAKE_SNAKEFMT_CONFIG_FILE:-.snakefmt.toml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
SQLFLUFF_FILE_NAME="${SQLFLUFF_CONFIG_FILE:-/.sqlfluff}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
TERRAFORM_TFLINT_FILE_NAME="${TERRAFORM_TFLINT_CONFIG_FILE:-.tflint.hcl}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
TERRAFORM_TERRASCAN_FILE_NAME="${TERRAFORM_TERRASCAN_CONFIG_FILE:-terrascan.toml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
NATURAL_LANGUAGE_FILE_NAME="${NATURAL_LANGUAGE_CONFIG_FILE:-.textlintrc}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
TSX_FILE_NAME="${TYPESCRIPT_ES_CONFIG_FILE:-.eslintrc.yml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
TYPESCRIPT_ES_FILE_NAME="${TYPESCRIPT_ES_CONFIG_FILE:-.eslintrc.yml}"
# shellcheck disable=SC2034  # Variable is referenced indirectly
YAML_FILE_NAME="${YAML_CONFIG_FILE:-.yaml-lint.yml}"
