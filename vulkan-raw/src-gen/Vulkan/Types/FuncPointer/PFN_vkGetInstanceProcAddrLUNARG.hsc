#include <vulkan/vulkan.h>

module Vulkan.Types.FuncPointer.PFN_vkGetInstanceProcAddrLUNARG where

import Data.Int
import Data.Void
import Data.Word
import Foreign.Ptr
import Vulkan.Types.FuncPointer.PFN_vkVoidFunction
import Vulkan.Types.Handle



type PFN_vkGetInstanceProcAddrLUNARG =
          VkInstance -- ^ instance
       -> Ptr #{type char} -- ^ pName
       -> IO (FunPtr PFN_vkVoidFunction)