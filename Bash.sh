export CD_COUNT_LIMIT=80
cd () {
	bultin cd "$@"
	COUNT=`ls -lh | wc -l`
	if [ "$COUNT" -lt $CD_COUNT_LIMIT ]
	then
		ls
	else
		echo "Count: $COUNT";
	fi
}
cdl () {
	builtin cd "$@"
	COUNT=`ls -alh | wc -l`
	if [ "$COUNT" -lt $CD_COUNT_LIMIT ]
	then
		ls
	else
		echo "Count: $COUNT";
	fi
}
