#!/bin/bash
az vm run-command invoke -g iot-devices-rg -n vm-0 --command-id RunShellScript --scripts "export DOTNET_CLI_HOME=/tmp &&  dotnet run --project /home/vm-admin/SymmetricKeyProvisioning/SymmetricKeySample.csproj"
az vm run-command invoke -g iot-devices-rg -n vm-1 --command-id RunShellScript --scripts "export DOTNET_CLI_HOME=/tmp &&  dotnet run --project /home/vm-admin/SymmetricKeyProvisioning/SymmetricKeySample.csproj"
az vm run-command invoke -g iot-devices-rg -n vm-2 --command-id RunShellScript --scripts "export DOTNET_CLI_HOME=/tmp &&  dotnet run --project /home/vm-admin/SymmetricKeyProvisioning/SymmetricKeySample.csproj"
