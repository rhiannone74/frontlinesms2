databaseChangeLog = {

	changeSet(author: "geoffrey (generated)", id: "1341237212656-1") {
		addColumn(tableName: "smslib_fconnection") {
			column(name: "receive", type: "boolean") 
		}
	}

	changeSet(author: "geoffrey (generated)", id: "1341237212656-2") {
		addColumn(tableName: "smslib_fconnection") {
			column(name: "send", type: "boolean")
		}
	}
}
