for (var i = 0; i < rows; i++) {
    var t_star = timer - i * spacing
   var yy = start_text[1] + t_star * direction_text[1]
   var zz = start_text[2] + t_star * direction_text[2]
   far_spacing = spacing / (power(abs(yy),2) + power(zz,2)) * (power(abs(start_text[1]),2) + power(start_text[2]^2,2))
   square_distance = scale / (power(abs(yy),2) + power(zz,2)) * (power(abs(start_text[1]),2) + power(start_text[2],2))
   image_xscale = 4 * start_text[2] / zz
   image_yscale = 4 * start_text[2] / zz
}