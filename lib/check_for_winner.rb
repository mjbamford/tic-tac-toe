def check_for_winner(rows)
    rows.each do |row|
        row = row.compact
        if (row.length == 3) && (row.uniq.length == 1)
            return row.first
        end
    end

    rows.transpose.each do |row|
        row = row.compact
        if (row.length == 3) && (row.uniq.length == 1)
            return row.first
        end
    end

    diagonal = [
        rows[0][0], rows[1][1], rows[2][2]
    ]

    diagonal.compact!
    return diagonal.first if (diagonal.length == 3) && (diagonal.uniq.length == 1)

    diagonal = [
        rows[0][2], rows[1][1], rows[2][0]
    ]

    diagonal.compact!
    return diagonal.first if (diagonal.length == 3) && (diagonal.uniq.length == 1)

    nil
end