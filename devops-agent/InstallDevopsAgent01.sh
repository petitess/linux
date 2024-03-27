installAgent() {
    local PAT="xceks4xf5seh5vutzt27j2hsosvq"
    local ORG="xse"
    local POOL="vmdevopslabb01"
    sudo mkdir devopsagents
    sudo groupadd agentusers
    sudo gpasswd -a azadmin agentusers
    sudo gpasswd -a root agentusers
    cd devopsagents
    sudo curl --output agent.tar.gz "https://vstsagentpackage.azureedge.net/agent/3.234.0/vsts-agent-linux-x64-3.234.0.tar.gz"
    for i in {1..2}
    do
    sudo mkdir "agent$i"
    cd "agent$i"
    sudo tar zxvf ../agent.tar.gz
    sudo chown -R azadmin:agentusers /devopsagents
    sudo chmod -R g+w /devopsagents
    ./config.sh --unattended --url https://dev.azure.com/$ORG --auth pat --token $PAT --pool $POOL --agent "agent$i" --acceptTeeEula --work "../../tmp/_work_agent$i"
    sudo ./svc.sh install
    sudo ./svc.sh start
    cd ..
    done
}
installAgent 
