{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Struct.VkBindIndexBufferIndirectCommandNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkIndexType



data {-# CTYPE "vulkan/vulkan.h" "VkBindIndexBufferIndirectCommandNV" #-} VkBindIndexBufferIndirectCommandNV =
       VkBindIndexBufferIndirectCommandNV
         { bufferAddress :: VkDeviceAddress
         , size :: #{type uint32_t}
         , indexType :: VkIndexType
         }

instance Storable VkBindIndexBufferIndirectCommandNV where
  sizeOf    _ = #{size      struct VkBindIndexBufferIndirectCommandNV}
  alignment _ = #{alignment struct VkBindIndexBufferIndirectCommandNV}

  peek ptr = 
    VkBindIndexBufferIndirectCommandNV
       <$> peek (offset @"bufferAddress" ptr)
       <*> peek (offset @"size" ptr)
       <*> peek (offset @"indexType" ptr)

  poke ptr val = do
    pokeField @"bufferAddress" ptr val
    pokeField @"size" ptr val
    pokeField @"indexType" ptr val

instance Offset "bufferAddress" VkBindIndexBufferIndirectCommandNV where
  rawOffset = #{offset struct VkBindIndexBufferIndirectCommandNV, bufferAddress}

instance Offset "size" VkBindIndexBufferIndirectCommandNV where
  rawOffset = #{offset struct VkBindIndexBufferIndirectCommandNV, size}

instance Offset "indexType" VkBindIndexBufferIndirectCommandNV where
  rawOffset = #{offset struct VkBindIndexBufferIndirectCommandNV, indexType}

#else

module Vulkan.Types.Struct.VkBindIndexBufferIndirectCommandNV where

#endif