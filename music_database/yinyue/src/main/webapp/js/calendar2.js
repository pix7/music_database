// Visual Studio references

/// <reference path="jquery-1.9.1.min.js" />
/// <reference path="jquery-ui-1.10.2.min.js" />
/// <reference path="moment.min.js" />
/// <reference path="timelineScheduler.js" />

var today = moment().startOf('day');

var Calendar ={
    Periods: [
         {
            Name: '1 day',
            Label: '1 day',
            TimeframePeriod: (60 * 1),
            TimeframeOverall: (60 * 24 * 1),
            TimeframeHeaders: [
                'Do MMM',
                'HH'
            ]
        },
        {
            Name: '3 days',
            Label: '3 days',
            TimeframePeriod: (60 * 3),
            TimeframeOverall: (60 * 24 * 3),
            TimeframeHeaders: [
                'Do MMM',
                'HH'
            ]
        },
        {
            Name: '1 week',
            Label: '1 week',
            TimeframePeriod: (60 * 24),
            TimeframeOverall: (60 * 24 * 7),
            TimeframeHeaders: [
                'MMM',
                'Do'
            ]
        },
        {
            Name: '1 month',
            Label: '1 month',
            TimeframePeriod: (60 * 24 * 7),
            TimeframeOverall: (60 * 24 * 28),
            TimeframeHeaders: [
                'Do MMM'
            ]
        }
    ],

    Items: [
        {
            id: 20,
            name: '<div>研究生会议</div><div>占用：陈强</div>',
            sectionID: 1,
            start: moment(today).add('hours', 7),
            end: moment(today).add('hours', 11),
            classes: 'item-status-three'
        },
        {
            id: 21,
            name: '<div>小组会议</div><div>占用：李明</div>',
            sectionID: 2,
            start: moment(today).add('hours', 9),
            end: moment(today).add('hours', 12),
            classes: 'item-status-one',
            events: [
                {
                    icon: '',
                    label: 'one',
                    at: moment(today).add('hours', 9),
                    classes: 'item-event-one'
                }
            ]
        },
        {
            id: 22,
            name: '<div>程序实训考试</div>',
            start: moment(today).add('hours', 12),
            end: moment(today).add('hours', 16),
            sectionID: 3,
            classes: 'item-status-none'
        },
        {
            id: 23,
            name: '<div>大学英语</div>',
            start: moment(today).add('hours', 13),
            end: moment(today).add('hours', 16.5),
            sectionID: 2,
            classes: 'item-status-two'
        }
    ],

    Sections: [/*
        {
            id: 1,
            name: '理科大楼B715'
        },
        {
            id: 2,
            name: '教书院132'
        },
        {
            id: 3,
            name: '理科大楼B129'
        },
        {
            id: 4,
            name: '理科大楼B525'
        },
        {
            id: 5,
            name: '教书院129'
        },
        {
            id: 6,
            name: '物理楼125'
        }*/
    ],

    Init: function () {
        TimeScheduler.Options.GetSections = Calendar.GetSections;
        TimeScheduler.Options.GetSchedule = Calendar.GetSchedule;
        TimeScheduler.Options.Start = today;
        TimeScheduler.Options.Periods = Calendar.Periods;
        TimeScheduler.Options.SelectedPeriod = '1 day';
        TimeScheduler.Options.Element = $('.calendar');

        TimeScheduler.Options.AllowDragging = true;
        TimeScheduler.Options.AllowResizing = true;

        TimeScheduler.Options.Events.ItemClicked = Calendar.Item_Clicked;
        TimeScheduler.Options.Events.ItemDropped = Calendar.Item_Dragged;
        TimeScheduler.Options.Events.ItemResized = Calendar.Item_Resized;

        TimeScheduler.Options.Events.ItemMovement = Calendar.Item_Movement;
        TimeScheduler.Options.Events.ItemMovementStart = Calendar.Item_MovementStart;
        TimeScheduler.Options.Events.ItemMovementEnd = Calendar.Item_MovementEnd;

        TimeScheduler.Options.Text.NextButton = '&nbsp;';
        TimeScheduler.Options.Text.PrevButton = '&nbsp;';

        TimeScheduler.Options.MaxHeight = 100;

        TimeScheduler.Init();
    },

    GetSections: function (callback) {
        callback(Calendar.Sections);
    },

    GetSchedule: function (callback, start, end) {
        callback(Calendar.Items);
    },

    Item_Clicked: function (item) {
        console.log(item);
    },

    Item_Dragged: function (item, sectionID, start, end) {
        var foundItem;

        console.log(item);
        console.log(sectionID);
        console.log(start);
        console.log(end);

        for (var i = 0; i < Calendar.Items.length; i++) {
            foundItem = Calendar.Items[i];

            if (foundItem.id === item.id) {
                foundItem.sectionID = sectionID;
                foundItem.start = start;
                foundItem.end = end;

                Calendar.Items[i] = foundItem;
            }
        }

        TimeScheduler.Init();
    },

    Item_Resized: function (item, start, end) {
        var foundItem;

        console.log(item);
        console.log(start);
        console.log(end);

        for (var i = 0; i < Calendar.Items.length; i++) {
            foundItem = Calendar.Items[i];

            if (foundItem.id === item.id) {
                foundItem.start = start;
                foundItem.end = end;

                Calendar.Items[i] = foundItem;
            }
        }

        TimeScheduler.Init();
    },

    Item_Movement: function (item, start, end) {
        var html;

        html =  '<div>';
        html += '   <div>';
        html += '       Start: ' + start.format('Do MMM YYYY HH:mm');
        html += '   </div>';
        html += '   <div>';
        html += '       End: ' + end.format('Do MMM YYYY HH:mm');
        html += '   </div>';
        html += '</div>';

        $('.realtime-info').empty().append(html);
    },

    Item_MovementStart: function () {
        $('.realtime-info').show();
    },

    Item_MovementEnd: function () {
        $('.realtime-info').hide();
    }
};

$.ajax({
      url: "Source/tagorg.php",
      type: "GET", 
      success: function(data) { 
        Calendar.Sections = data;    
      }                      
    });


$(document).ready(Calendar.Init);

