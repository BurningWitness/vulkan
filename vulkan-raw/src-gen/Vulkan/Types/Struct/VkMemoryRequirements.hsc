{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkMemoryRequirements where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryRequirements" #-} VkMemoryRequirements =
       VkMemoryRequirements
         { size :: VkDeviceSize -- ^ Specified in bytes
         , alignment :: VkDeviceSize -- ^ Specified in bytes
         , memoryTypeBits :: #{type uint32_t} -- ^ Bitmask of the allowed memory type indices into memoryTypes[] for this object
         }

instance Storable VkMemoryRequirements where
  sizeOf    _ = #{size      struct VkMemoryRequirements}
  alignment _ = #{alignment struct VkMemoryRequirements}

  peek ptr = 
    VkMemoryRequirements
       <$> peek (offset @"size" ptr)
       <*> peek (offset @"alignment" ptr)
       <*> peek (offset @"memoryTypeBits" ptr)

  poke ptr val = do
    pokeField @"size" ptr val
    pokeField @"alignment" ptr val
    pokeField @"memoryTypeBits" ptr val

instance Offset "size" VkMemoryRequirements where
  rawOffset = #{offset struct VkMemoryRequirements, size}

instance Offset "alignment" VkMemoryRequirements where
  rawOffset = #{offset struct VkMemoryRequirements, alignment}

instance Offset "memoryTypeBits" VkMemoryRequirements where
  rawOffset = #{offset struct VkMemoryRequirements, memoryTypeBits}