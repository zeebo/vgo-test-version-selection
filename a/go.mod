module "github.com/zeebo/a"

require (
	"github.com/zeebo/b" v1.0.0
)

replace (
	"github.com/zeebo/b" v1.0.0 => "../b"
	"github.com/zeebo/c" v1.0.0 => "../c1.0"
	"github.com/zeebo/c" v1.1.0 => "../c1.1"
	"github.com/zeebo/d" v1.0.0 => "../d"
	"github.com/zeebo/e" v1.0.0 => "../e"
)
