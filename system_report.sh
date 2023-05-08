#!/bin/bash
KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNO=$(cat /proc/cpuinfo | grep 'model name' | wc -l)
CPUMODEL=$(cat /proc/cpuinfo | grep 'model name' | head -n1 | cut -c14-)
MEMTOTAL=$(cat /proc/meminfo | grep 'MemTotal' | cut -d: -f2)
FILESYS=$(df -h)
UPTIME=$(uptime)
echo "==============================================="
echo "Relatório da Máquina: $HOSTNAME"
echo "Data/Hora: $(date)"
echo ""
echo "Máquina Ativa desde: $UPTIME"
echo ""
echo "Versão do Kernel: $KERNEL"
echo ""
echo "CPUs:"
echo "Quantidade de CPUs/Core: $CPUNO"
echo "Modelo da CPU: $CPUMODEL"
echo ""
echo "Memória Total: $MEMTOTAL"
echo ""
echo "Partições:"
echo "$FILESYS"
echo "==============================================="
