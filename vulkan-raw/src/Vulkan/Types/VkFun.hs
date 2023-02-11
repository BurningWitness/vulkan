module Vulkan.Types.VkFun where

import           Foreign.C.String
import           Foreign.Ptr



-- | Type-safe Vulkan function name
newtype VkFun a = VkFun CString
