installAgent() {
    local PAT="xceks4xf5seh5vutzt27j2hsosvq"
    local ORG="xxxse"
    local POOL="vmdevopslabb01"
    sudo mkdir devopsagentss
    sudo groupadd agentusers
    sudo gpasswd -a azadmin agentusers
    sudo gpasswd -a root agentusers
    cd devopsagentss
    sudo curl --output agent.tar.gz "https://vstsagentpackage.azureedge.net/agent/3.234.0/vsts-agent-linux-x64-3.234.0.tar.gz"
    for i in {2..5}
    do
    sudo mkdir "agent$i"
    cd "agent$i"
    sudo tar zxvf ../agent.tar.gz
    sudo chown -R azadmin:agentusers /devopsagentss
    sudo chown -R azadmin:agentusers /devopsagentss
    sudo chmod -R g+w /devopsagentss
    ./config.sh --unattended --url https://dev.azure.com/$ORG --auth pat --token $PAT --pool $POOL --agent "agent$i" --acceptTeeEula --work "../../tmp/_work_agent$i"
    sudo ./svc.sh install
    sudo ./svc.sh start
    cd ..
    done
}
installAgent 
