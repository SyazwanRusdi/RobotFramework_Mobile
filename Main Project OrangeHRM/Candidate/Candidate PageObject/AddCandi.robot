*** Variables ***
${ac_lname}       xpath=//*[@id="addCandidate_lastName"]
${ac_fname}       xpath=//*[@id="addCandidate_firstName"]
${ac_email}       xpath=//*[@id="addCandidate_email"]
${ac_jobva}       xpath=//*[@id="addCandidate_vacancy"]
${ac_uploadresume}    xpath=//*[@id="addCandidate_resume"]
${ac_save}        xpath=//*[@id="btnSave"]
${ac_back_aftersave}    xpath=//*[@id="btnBack"]
${ac_requireerror_fname}    xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[1]/ol/li[1]/span
${ac_requireerror_lname}    xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[1]/ol/li[3]/span
${ac_requireerror_email}    xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[2]/span
${ac_emailerror}    xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[2]/span
${ac_exceedsizeerror}    xpath=//*[@id='addCandidate']/div[2]/div
