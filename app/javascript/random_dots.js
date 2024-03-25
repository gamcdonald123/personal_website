function createRandomDots(numberOfDots, maxSize) {
  let svgns = "http://www.w3.org/2000/svg";
  let svg = document.createElementNS(svgns, "svg");
  svg.setAttributeNS(null, 'width', '100%');
  svg.setAttributeNS(null, 'height', '100%');

  for (let i = 0; i < numberOfDots; i++) {
    let circle = document.createElementNS(svgns, 'circle');
    let cx = Math.random() * 100;
    let cy = Math.random() * 100;
    let r = Math.random() * maxSize;

    circle.setAttributeNS(null, 'cx', `${cx}%`);
    circle.setAttributeNS(null, 'cy', `${cy}%`);
    circle.setAttributeNS(null, 'r', `${r}vmin`);
    circle.setAttributeNS(null, 'fill', 'rgba(255, 255, 255, 0.1)');

    svg.appendChild(circle);
  }

  return `url('data:image/svg+xml;base64,${btoa(new XMLSerializer().serializeToString(svg))}')`;
}

document.getElementById('menu-background-pattern').style.backgroundImage = createRandomDots(50, 2);

document.addEventListener('turbolinks:load', () => {
  const menuBackgroundPattern = document.getElementById('menu-background-pattern');
  if (menuBackgroundPattern) {
    menuBackgroundPattern.style.backgroundImage = createRandomDots(50, 2);
  }
});
