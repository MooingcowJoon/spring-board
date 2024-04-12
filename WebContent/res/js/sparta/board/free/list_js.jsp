<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$j(()=>{
	const boardListSort = orderBy => {
		const list = $j("#boardList").children()
		const sortedElArr = list.sort((a,b)=>{
			if(orderBy === 'date'){
				comp = $j(b).find('[data-sort="date"]').text().localeCompare($j(a).find('[data-sort="date"]').text())
				
			}
			if(orderBy === 'vote'){
				comp = parseInt($j(b).find('[data-sort="vote"]').text()) - parseInt($j(a).find('[data-sort="vote"]').text())
			}
			return comp
		})
		$j('#boardList').empty().append(sortedElArr)	
	}
	$j('#sortTab').children().click(e=>{
		const el = $j(e.target).closest('[data-sort]')
		if(el.hasClass('css-1kb98ja')){
			return
		}
		el.removeClass().addClass('css-1kb98ja').find('circle').attr('fill','#e8344e')
						.parent().next().removeClass().addClass('css-1619ajl')
		const other = el.next().length>0 ? el.next() : el.prev()
		other.removeClass().addClass('css-bewb21').find('circle').attr('fill','#B4BFC6')
		.parent().next().removeClass().addClass('css-1j5hzn7')
		boardListSort(el.data('sort'))
		}
	)
	
})
	
	
</script>