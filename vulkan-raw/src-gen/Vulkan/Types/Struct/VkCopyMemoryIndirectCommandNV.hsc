{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_copy_memory_indirect

module Vulkan.Types.Struct.VkCopyMemoryIndirectCommandNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkCopyMemoryIndirectCommandNV" #-} VkCopyMemoryIndirectCommandNV =
       VkCopyMemoryIndirectCommandNV
         { srcAddress :: VkDeviceAddress
         , dstAddress :: VkDeviceAddress
         , size :: VkDeviceSize -- ^ Specified in bytes
         }

instance Storable VkCopyMemoryIndirectCommandNV where
  sizeOf    _ = #{size      struct VkCopyMemoryIndirectCommandNV}
  alignment _ = #{alignment struct VkCopyMemoryIndirectCommandNV}

  peek ptr = 
    VkCopyMemoryIndirectCommandNV
       <$> peek (offset @"srcAddress" ptr)
       <*> peek (offset @"dstAddress" ptr)
       <*> peek (offset @"size" ptr)

  poke ptr val = do
    pokeField @"srcAddress" ptr val
    pokeField @"dstAddress" ptr val
    pokeField @"size" ptr val

instance Offset "srcAddress" VkCopyMemoryIndirectCommandNV where
  rawOffset = #{offset struct VkCopyMemoryIndirectCommandNV, srcAddress}

instance Offset "dstAddress" VkCopyMemoryIndirectCommandNV where
  rawOffset = #{offset struct VkCopyMemoryIndirectCommandNV, dstAddress}

instance Offset "size" VkCopyMemoryIndirectCommandNV where
  rawOffset = #{offset struct VkCopyMemoryIndirectCommandNV, size}

#else

module Vulkan.Types.Struct.VkCopyMemoryIndirectCommandNV where

#endif