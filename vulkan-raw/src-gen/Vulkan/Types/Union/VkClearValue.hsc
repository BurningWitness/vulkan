{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Union.VkClearValue where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkClearDepthStencilValue
import Vulkan.Types.Union.VkClearColorValue



data {-# CTYPE "vulkan/vulkan.h" "VkClearValue" #-} VkClearValue =
       VkClearValue
         { color :: VkClearColorValue
         , depthStencil :: VkClearDepthStencilValue
         }

instance Storable VkClearValue where
  sizeOf    _ = #{size      VkClearValue}
  alignment _ = #{alignment VkClearValue}

  peek ptr = 
    VkClearValue
       <$> peek (Foreign.Storable.Offset.offset @"color" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthStencil" ptr)

  poke ptr val = do
    pokeField @"color" ptr val
    pokeField @"depthStencil" ptr val

instance Offset "color" VkClearValue where
  rawOffset = #{offset VkClearValue, color}

instance Offset "depthStencil" VkClearValue where
  rawOffset = #{offset VkClearValue, depthStencil}