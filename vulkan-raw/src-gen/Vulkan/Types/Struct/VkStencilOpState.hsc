{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkStencilOpState where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCompareOp
import Vulkan.Types.Enum.VkStencilOp



data {-# CTYPE "vulkan/vulkan.h" "VkStencilOpState" #-} VkStencilOpState =
       VkStencilOpState
         { failOp :: VkStencilOp
         , passOp :: VkStencilOp
         , depthFailOp :: VkStencilOp
         , compareOp :: VkCompareOp
         , compareMask :: #{type uint32_t}
         , writeMask :: #{type uint32_t}
         , reference :: #{type uint32_t}
         }

instance Storable VkStencilOpState where
  sizeOf    _ = #{size      VkStencilOpState}
  alignment _ = #{alignment VkStencilOpState}

  peek ptr = 
    VkStencilOpState
       <$> peek (Foreign.Storable.Offset.offset @"failOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"passOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthFailOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compareOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compareMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"writeMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"reference" ptr)

  poke ptr val = do
    pokeField @"failOp" ptr val
    pokeField @"passOp" ptr val
    pokeField @"depthFailOp" ptr val
    pokeField @"compareOp" ptr val
    pokeField @"compareMask" ptr val
    pokeField @"writeMask" ptr val
    pokeField @"reference" ptr val

instance Offset "failOp" VkStencilOpState where
  rawOffset = #{offset VkStencilOpState, failOp}

instance Offset "passOp" VkStencilOpState where
  rawOffset = #{offset VkStencilOpState, passOp}

instance Offset "depthFailOp" VkStencilOpState where
  rawOffset = #{offset VkStencilOpState, depthFailOp}

instance Offset "compareOp" VkStencilOpState where
  rawOffset = #{offset VkStencilOpState, compareOp}

instance Offset "compareMask" VkStencilOpState where
  rawOffset = #{offset VkStencilOpState, compareMask}

instance Offset "writeMask" VkStencilOpState where
  rawOffset = #{offset VkStencilOpState, writeMask}

instance Offset "reference" VkStencilOpState where
  rawOffset = #{offset VkStencilOpState, reference}