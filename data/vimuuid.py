#!/usr/bin/python
import uuid
import vim

uid = uuid.uuid4().urn[9:]
vim.command(':let generatedUuid = "' + uid + '"')
