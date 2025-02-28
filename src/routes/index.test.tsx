import { render, screen } from "@testing-library/react";

import { IndexPage } from ".";

describe("<IndexPage />", () => {
  it("should render the index page", () => {
    const { container } = render(<IndexPage />);

    expect(screen.getByText("index page")).toBeInTheDocument();
    expect(container.firstChild).toBeInTheDocument();
  });
});
