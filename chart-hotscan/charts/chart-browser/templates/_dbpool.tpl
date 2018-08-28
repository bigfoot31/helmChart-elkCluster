{{- define "browser.dbpool" }}
  drivers=oracle.jdbc.driver.OracleDriver
  logfile=dbpool.log

  hotinstance.url= {{- .Values.browser.dbpool.database.url }}
  hotinstance.user= {{- .Values.browser.dbpool.database.username }}
  hotinstance.password= {{- .Values.browser.dbpool.database.password }}
  hotinstance.maxpool=100
  hotinstance.maxconn=125
  hotinstance.expiry=300
  hotinstance.validator=com.logicacmg.hotscan.helper.DBConnectionValidator
  hotinstance.cache=false
  hotinstance.decoder=com.logicacmg.hotscan.helper.DBDecoder

  instancenames={{- .Values.browser.dbpool.database.instanceName }}
{{- end }}
