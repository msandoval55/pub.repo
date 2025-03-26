#If you want to check all nodes in the cluster:
Invoke-Command -ComputerName ServerName -ScriptBlock {
    Get-ClusterResource | Format-Table Name, State, OwnerNode, ResourceType
}
