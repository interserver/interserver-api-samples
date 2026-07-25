package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerOrderCPU {
    /* CPU ID. */
    String id
    /* CPU price. */
    Integer price
    /* CPU image. */
    String img
    /* Short description of the CPU. */
    String shortDesc
    /* Long description of the CPU. */
    String longDesc
    /* Location of the CPU. */
    String location
    /* Front Side Bus information. */
    String fsb
    /* Manufacturer information. */
    String manu
    /* CPU type. */
    String type
    /* CPU speed. */
    String speed
    /* Cache information. */
    String cache
    /* Active status. */
    String active
    /* Number of cores. */
    String numCores
    /* Number of CPUs. */
    String numCpus
    /* CPU benchmark. */
    String benchmark
    /* Monthly price. */
    Integer monthlyPrice
    /* Maximum RAM supported. */
    String maxRam
    /* Minimum RAM required. */
    String minRam
    /* Maximum LFF (Large Form Factor) supported. */
    String maxLff
    /* Maximum SFF (Small Form Factor) supported. */
    String maxSff
    /* Maximum NVMe drives supported. */
    String maxNve
    /* Visibility status. */
    String visible
    /* Hard drive IDs. */
    String hdIds
    /* Display of CPU price. */
    String priceDisplay
    /* Display of monthly CPU price. */
    String monthlyPriceDisplay
}
