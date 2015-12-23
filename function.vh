function integer GET_WIDTH;
    input integer value;
begin
    for (GET_WIDTH = 0; value > 0; GET_WIDTH = GET_WIDTH + 1)
        value = value>>1;
    end
endfunction
