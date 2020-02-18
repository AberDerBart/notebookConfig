#!/bin/bash

percent=$(acpi --battery|cut -d, -f2|tr -d "[:space:]")

echo $percent
