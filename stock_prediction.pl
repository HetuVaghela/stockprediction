
% Stock Price Predictor
% AICA Mini Project

% Facts: Available stocks
stock(tcs).
stock(infosys).

% Facts: Price trends
price_trend(tcs, rising).
price_trend(infosys, falling).

% Facts: Trading volume
volume(tcs, high).
volume(infosys, low).

% Facts: Market trends
market_trend(tcs, bullish).
market_trend(infosys, bearish).

% Rule 1: Buy recommendation
recommendation(Stock, buy) :-
    price_trend(Stock, rising),
    volume(Stock, high),
    market_trend(Stock, bullish).

% Rule 2: Sell recommendation
recommendation(Stock, sell) :-
    price_trend(Stock, falling),
    volume(Stock, low),
    market_trend(Stock, bearish).

% Rule 3: Hold recommendation when price is rising
% and trading volume is low
recommendation(Stock, hold) :-
    price_trend(Stock, rising),
    volume(Stock, low).

% Rule 4: Hold recommendation when price is falling
% and trading volume is high
recommendation(Stock, hold) :-
    price_trend(Stock, falling),
    volume(Stock, high).
