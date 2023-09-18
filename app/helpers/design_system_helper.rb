# frozen_string_literal: true

# DesignSystemHelper is responsible to provide more logical methods
module DesignSystemHelper
  # @param icon_type [String]
  # @return [String] With html_safe to be rendered
  def icon(icon_type)
    case icon_type
    in 'issues'
      <<~HTML.html_safe
        <svg width="12" height="12" class="flex-shrink-0 mt-1" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
        <g id="issue-icon">
        <path id="Vector" d="M6 7.5C6.41667 7.5 6.77083 7.35417 7.0625 7.0625C7.35417 6.77083 7.5 6.41667 7.5 6C7.5 5.58333 7.35417 5.22917 7.0625 4.9375C6.77083 4.64583 6.41667 4.5 6 4.5C5.58333 4.5 5.22917 4.64583 4.9375 4.9375C4.64583 5.22917 4.5 5.58333 4.5 6C4.5 6.41667 4.64583 6.77083 4.9375 7.0625C5.22917 7.35417 5.58333 7.5 6 7.5ZM6 11C5.30833 11 4.65833 10.8688 4.05 10.6062C3.44167 10.3438 2.9125 9.9875 2.4625 9.5375C2.0125 9.0875 1.65625 8.55833 1.39375 7.95C1.13125 7.34167 1 6.69167 1 6C1 5.30833 1.13125 4.65833 1.39375 4.05C1.65625 3.44167 2.0125 2.9125 2.4625 2.4625C2.9125 2.0125 3.44167 1.65625 4.05 1.39375C4.65833 1.13125 5.30833 1 6 1C6.69167 1 7.34167 1.13125 7.95 1.39375C8.55833 1.65625 9.0875 2.0125 9.5375 2.4625C9.9875 2.9125 10.3438 3.44167 10.6062 4.05C10.8688 4.65833 11 5.30833 11 6C11 6.69167 10.8688 7.34167 10.6062 7.95C10.3438 8.55833 9.9875 9.0875 9.5375 9.5375C9.0875 9.9875 8.55833 10.3438 7.95 10.6062C7.34167 10.8688 6.69167 11 6 11ZM6 10C7.11667 10 8.0625 9.6125 8.8375 8.8375C9.6125 8.0625 10 7.11667 10 6C10 4.88333 9.6125 3.9375 8.8375 3.1625C8.0625 2.3875 7.11667 2 6 2C4.88333 2 3.9375 2.3875 3.1625 3.1625C2.3875 3.9375 2 4.88333 2 6C2 7.11667 2.3875 8.0625 3.1625 8.8375C3.9375 9.6125 4.88333 10 6 10Z" fill="#7E22CE"/>
        </g>
        </svg>
      HTML
    in 'pull'
      <<~HTML.html_safe
        <svg width="9" height="12" class="flex-shrink-0 mt-1" viewBox="0 0 9 12" fill="none" xmlns="http://www.w3.org/2000/svg">
        <g id="pull-icon" clip-path="url(#clip0_2_209)">
        <path id="Vector" d="M1.5 0.75C0.672 0.75 0 1.422 0 2.25C0 2.80335 0.303586 3.28198 0.75 3.54236V8.45801C0.303586 8.71802 0 9.19629 0 9.75C0 10.5776 0.672 11.25 1.5 11.25C2.328 11.25 3 10.5776 3 9.75C3 9.19629 2.69714 8.71802 2.25 8.45801V3.54236C2.69714 3.28198 3 2.80335 3 2.25C3 1.422 2.328 0.75 1.5 0.75ZM1.5 10.5C1.08619 10.5 0.75 10.1646 0.75 9.75C0.75 9.33619 1.08619 9 1.5 9C1.91491 9 2.25 9.33619 2.25 9.75C2.25 10.1646 1.91491 10.5 1.5 10.5ZM1.5 3C1.08619 3 0.75 2.66491 0.75 2.25C0.75 1.83509 1.08619 1.5 1.5 1.5C1.91491 1.5 2.25 1.83509 2.25 2.25C2.25 2.66491 1.91491 3 1.5 3ZM8.25 8.45801V3.75C8.25 1.49414 6 1.5 6 1.5H5.25V0L3 2.25L5.25 4.5V3C5.25 3 5.56275 3 6 3C6.66138 3 6.75 3.75 6.75 3.75V8.45801C6.30322 8.71802 6 9.19556 6 9.75C6 10.5776 6.67236 11.25 7.5 11.25C8.32764 11.25 9 10.5776 9 9.75C9 9.19629 8.69678 8.71802 8.25 8.45801ZM7.5 10.5C7.08619 10.5 6.75 10.1646 6.75 9.75C6.75 9.33619 7.08619 9 7.5 9C7.91455 9 8.25 9.33619 8.25 9.75C8.25 10.1646 7.91455 10.5 7.5 10.5Z" fill="#7E22CE"/>
        </g>
        <defs>
        <clipPath id="clip0_2_209">
        <rect width="9" height="12" fill="white"/>
        </clipPath>
        </defs>
        </svg>
      HTML
    end
  end

  # Returns the technology image pattern.
  #
  # This method transforms the technology, treating special cases such as
  # "C#" into "csharp", removing spaces and transforming to lowercase.
  #
  # @param technology [String] This represent the parsed technology
  def define_technology_image_pattern(technology)
    case technology
    in 'C#'
      'csharp.svg'
    in 'C++'
      'cplusplus.svg'
    else
      technology.gsub(%r{ }, '').downcase + '.svg'
    end
  end
end
