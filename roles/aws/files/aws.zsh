# AWS CLI Completion
if command -v aws_completer &> /dev/null; then
  autoload -U +X bashcompinit && bashcompinit
  complete -C '$(which aws_completer)' aws
fi
