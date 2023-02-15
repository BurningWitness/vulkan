#include <vulkan/vulkan.h>

module Vulkan.Types.FuncPointer.PFN_vkFreeFunction where

import Data.Int
import Data.Void
import Data.Word
import Foreign.Ptr



type PFN_vkFreeFunction =
          Ptr () -- ^ pUserData
       -> Ptr () -- ^ pMemory
       -> IO ()