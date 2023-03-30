#let project(course: "课程作业", number: int(0), name: "姓名", id: "PB2XXXXXXX",
             body) = {
    // Set the document's basic properties.
    let author = name + " " + id 
    let title = course + " " + str(number)
    set document(author: (author, ), title: title)
    set page(
        numbering: "1", 
        number-align: center,
        // Running header.
        header-ascent: 14pt,
        header: locate(loc => {
            let i = counter(page).at(loc).first()
            if i == 1 { return }
            set text(size: 8pt)
            grid(
                columns: (50%, 50%),
                align(left, title),
                align(right, author),
            )
        }),
    )
    set text(font: "Source Han Serif SC", lang: "en")
    show math.equation: set text(font: "New Computer Modern Math", weight: 400)

    // Set paragraph spacing.
    show par: set block(above: 1.2em, below: 1.2em)

    set par(leading: 0.75em)

    // Title row.
    align(center)[
        #block(text(weight: 700, 1.75em, title))
        
        #v(0.25em)

        #author

        #v(0.25em)
    ]

    // Main body.
    set par(justify: true)

    // Code
    show raw.where(block: false): box.with(
        fill: luma(240),
        inset: (x: 3pt, y: 0pt),
        outset: (y: 3pt),
        radius: 2pt,
    )

    show raw.where(block: true): block.with(
        width: 100%,
        fill: luma(240),
        inset: 10pt,
        radius: 4pt,
    )

    body
}

#let question_name = "题"
#let answer_name = "解: "

#let question(number, problem, answer) = {
    rect(width: 100%, inset: 10pt, radius: 4pt)[
        #strong(question_name + " " + str(number) + ".")
        #problem
    ]
    [#strong(answer_name) #answer]
}
