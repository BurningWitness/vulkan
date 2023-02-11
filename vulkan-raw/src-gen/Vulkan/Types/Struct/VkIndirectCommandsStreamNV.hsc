{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Struct.VkIndirectCommandsStreamNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkIndirectCommandsStreamNV" #-} VkIndirectCommandsStreamNV =
       VkIndirectCommandsStreamNV
         { buffer :: VkBuffer
         , offset :: VkDeviceSize
         }

instance Storable VkIndirectCommandsStreamNV where
  sizeOf    _ = #{size      struct VkIndirectCommandsStreamNV}
  alignment _ = #{alignment struct VkIndirectCommandsStreamNV}

  peek ptr = 
    VkIndirectCommandsStreamNV
       <$> peek (offset @"buffer" ptr)
       <*> peek (offset @"offset" ptr)

  poke ptr val = do
    pokeField @"buffer" ptr val
    pokeField @"offset" ptr val

instance Offset "buffer" VkIndirectCommandsStreamNV where
  rawOffset = #{offset struct VkIndirectCommandsStreamNV, buffer}

instance Offset "offset" VkIndirectCommandsStreamNV where
  rawOffset = #{offset struct VkIndirectCommandsStreamNV, offset}

#else

module Vulkan.Types.Struct.VkIndirectCommandsStreamNV where

#endif