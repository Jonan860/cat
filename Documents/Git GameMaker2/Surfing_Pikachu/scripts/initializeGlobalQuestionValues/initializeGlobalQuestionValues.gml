function initializeGlobalQuestionValues() { 
	switch(global.player) {
		case PLAYERS.BEBIS : 
			global.mn_max = 3;
			global.questionOperatorString = "+"
			global.questionOperator = function(n,m) {
				return n + m
			}
			break;
		
		case PLAYERS.NILS :
			global.mn_max = 10;
			global.questionOperatorString = "+"
			global.questionOperator = function(n,m) {
				return n + m
			}
			break;
		
		case PLAYERS.IDA :
			global.mn_max = 6;
			global.questionOperatorString = "*"
			global.questionOperator = function(n, m) {
				return n * m
			}
			break;
	}
}