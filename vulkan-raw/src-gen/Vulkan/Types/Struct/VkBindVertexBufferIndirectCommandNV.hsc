{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Struct.VkBindVertexBufferIndirectCommandNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkBindVertexBufferIndirectCommandNV" #-} VkBindVertexBufferIndirectCommandNV =
       VkBindVertexBufferIndirectCommandNV
         { bufferAddress :: VkDeviceAddress
         , size :: #{type uint32_t}
         , stride :: #{type uint32_t}
         }

instance Storable VkBindVertexBufferIndirectCommandNV where
  sizeOf    _ = #{size      VkBindVertexBufferIndirectCommandNV}
  alignment _ = #{alignment VkBindVertexBufferIndirectCommandNV}

  peek ptr = 
    VkBindVertexBufferIndirectCommandNV
       <$> peek (offset @"bufferAddress" ptr)
       <*> peek (offset @"size" ptr)
       <*> peek (offset @"stride" ptr)

  poke ptr val = do
    pokeField @"bufferAddress" ptr val
    pokeField @"size" ptr val
    pokeField @"stride" ptr val

instance Offset "bufferAddress" VkBindVertexBufferIndirectCommandNV where
  rawOffset = #{offset VkBindVertexBufferIndirectCommandNV, bufferAddress}

instance Offset "size" VkBindVertexBufferIndirectCommandNV where
  rawOffset = #{offset VkBindVertexBufferIndirectCommandNV, size}

instance Offset "stride" VkBindVertexBufferIndirectCommandNV where
  rawOffset = #{offset VkBindVertexBufferIndirectCommandNV, stride}

#else

module Vulkan.Types.Struct.VkBindVertexBufferIndirectCommandNV where

#endif