export CD_LS_COUNT_LIMIT=100
cd () {
	bultin cd "$@"
	COUNT=`ls | wc -l`
	if [ "$COUNT" -lt $CD_LS_COUNT_LIMIT ]
	then
		ls
	else
		echo "Count: $COUNT";
	fi
}

export CD_LL_COUNT_LIMIT=50
cdl () {
	builtin cd "$@"
	COUNT=`ls -alh | wc -l`
	if [ "$COUNT" -lt $CD_LL_COUNT_LIMIT ]
	then
		ls
	else
		echo "Count: $COUNT";
	fi
}
