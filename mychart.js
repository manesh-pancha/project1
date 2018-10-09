draw = function (Rent, Travel, Food, Phone, Gym, Other) {

    //document.getElementById("chartData").innerHTML = "Chart data = Rent " + Rent + " Travel " + Travel + " Food " + Food + " Phone " + Phone + " Gym " + Gym + " Other " + Other;

    var expdata = [parseFloat(Rent), parseFloat(Travel), parseFloat(Food), parseFloat(Phone), parseFloat(Gym), parseFloat(Other) ];

    //document.getElementById("expenseData").innerHTML = expdata;

    const ctx1 = document.getElementById("ExpensesChart");
    
    var explabels = ["Rent", "Travel", "Food", "Phone", "Gym", "other"];
    
    data = {
        datasets: [{
            data: expdata,
            backgroundColor: [
                   'rgb(0, 0, 255)',
                   'rgb(255, 120, 60)',
                   'rgb(100, 100, 100)',
                   'rgb(255, 0, 0)',
                   'rgb(255, 255, 0)',
                   'rgb(255, 160, 27)']
        }],
        // These labels appear in the legend and in the tooltips when hovering different arcs
        labels: explabels
    };

    //draw chart
    var expChart = new Chart(ctx1, {
        type: 'pie',
        data: data,
        options: {
            title: {
                display: true,
                fontFamily: "'Francois One','Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
                fontSize: 18,
                fontStyle: 'bold',
                text: 'Expenses data'
            },
            legend: {
                display: false,
                labels: {
                    fontColor: 'rgb(255, 99, 132)'
                }
            }
        }
    });

    

}