local waf = require "resty.jxwaf.waf"

ngx.req.read_body()

local access_init_result,access_init_error = pcall(waf.access_init)
if not access_init_result then
  ngx.log(ngx.ERR,access_init_error)
end

local base_component_result,base_component_error = pcall(waf.base_component)
if not base_component_result then
  ngx.log(ngx.ERR,base_component_error)
end

local name_list_result,name_list_error = pcall(waf.name_list)
if not name_list_result then
  ngx.log(ngx.ERR,name_list_error)
end

local domain_check_result,domain_check_error = pcall(waf.domain_check)
if not domain_check_result then
  ngx.log(ngx.ERR,domain_check_error)
end

local flow_white_rule_result,flow_white_rule_error = pcall(waf.flow_white_rule)
if not flow_white_rule_result then
  ngx.log(ngx.ERR,flow_white_rule_error)
end

local flow_black_ip_result,flow_black_ip_error = pcall(waf.flow_black_ip)
if not flow_black_ip_result then
  ngx.log(ngx.ERR,flow_black_ip_error)
end

local flow_ip_region_block_result,flow_ip_region_block_error = pcall(waf.flow_ip_region_block)
if not flow_ip_region_block_result then
  ngx.log(ngx.ERR,flow_ip_region_block_error)
end

local flow_rule_protection_result,flow_rule_protection_error = pcall(waf.flow_rule_protection)
if not flow_rule_protection_result then
  ngx.log(ngx.ERR,flow_rule_protection_error)
end

local flow_engine_protection_result,flow_engine_protection_error = pcall(waf.flow_engine_protection)
if not flow_engine_protection_result then
  ngx.log(ngx.ERR,flow_engine_protection_error)
end

local web_white_rule_result,web_white_rule_error = pcall(waf.web_white_rule)
if not web_white_rule_result then
  ngx.log(ngx.ERR,web_white_rule_error)
end

local web_rule_protection_result,web_rule_protection_error = pcall(waf.web_rule_protection)
if not web_rule_protection_result then
  ngx.log(ngx.ERR,web_rule_protection_error)
end

local web_engine_protection_result,web_engine_protection_error = pcall(waf.web_engine_protection)
if not web_engine_protection_result then
  ngx.log(ngx.ERR,web_engine_protection_error)
end

local scan_attack_protection_result,scan_attack_protection_error = pcall(waf.scan_attack_protection)
if not scan_attack_protection_result then
  ngx.log(ngx.ERR,scan_attack_protection_error)
end

local waf_action_process_result,waf_action_process_error = pcall(waf.waf_action_process)
if not waf_action_process_result then
  ngx.log(ngx.ERR,waf_action_process_error)
end

local web_page_tamper_proof_result,web_page_tamper_proof_error = pcall(waf.web_page_tamper_proof)
if not web_page_tamper_proof_result then
  ngx.log(ngx.ERR,web_page_tamper_proof_error)
end


local analysis_component_result,analysis_component_error = pcall(waf.analysis_component)
if not analysis_component_result then
  ngx.log(ngx.ERR,analysis_component_error)
end

local redirect_https_result,redirect_https_error = pcall(waf.redirect_https)
if not redirect_https_result then
  ngx.log(ngx.ERR,redirect_https_error)
end

local init_jxwaf_devid_result,init_jxwaf_devid_error = pcall(waf.init_jxwaf_devid)
if not init_jxwaf_devid_result then
  ngx.log(ngx.ERR,init_jxwaf_devid_error)
end

