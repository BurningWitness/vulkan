{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkClearDepthStencilValue where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkClearDepthStencilValue" #-} VkClearDepthStencilValue =
       VkClearDepthStencilValue
         { depth :: #{type float}
         , stencil :: #{type uint32_t}
         }

instance Storable VkClearDepthStencilValue where
  sizeOf    _ = #{size      struct VkClearDepthStencilValue}
  alignment _ = #{alignment struct VkClearDepthStencilValue}

  peek ptr = 
    VkClearDepthStencilValue
       <$> peek (offset @"depth" ptr)
       <*> peek (offset @"stencil" ptr)

  poke ptr val = do
    pokeField @"depth" ptr val
    pokeField @"stencil" ptr val

instance Offset "depth" VkClearDepthStencilValue where
  rawOffset = #{offset struct VkClearDepthStencilValue, depth}

instance Offset "stencil" VkClearDepthStencilValue where
  rawOffset = #{offset struct VkClearDepthStencilValue, stencil}