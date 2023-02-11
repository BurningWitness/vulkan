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
  sizeOf    _ = #{size      struct VkStencilOpState}
  alignment _ = #{alignment struct VkStencilOpState}

  peek ptr = 
    VkStencilOpState
       <$> peek (offset @"failOp" ptr)
       <*> peek (offset @"passOp" ptr)
       <*> peek (offset @"depthFailOp" ptr)
       <*> peek (offset @"compareOp" ptr)
       <*> peek (offset @"compareMask" ptr)
       <*> peek (offset @"writeMask" ptr)
       <*> peek (offset @"reference" ptr)

  poke ptr val = do
    pokeField @"failOp" ptr val
    pokeField @"passOp" ptr val
    pokeField @"depthFailOp" ptr val
    pokeField @"compareOp" ptr val
    pokeField @"compareMask" ptr val
    pokeField @"writeMask" ptr val
    pokeField @"reference" ptr val

instance Offset "failOp" VkStencilOpState where
  rawOffset = #{offset struct VkStencilOpState, failOp}

instance Offset "passOp" VkStencilOpState where
  rawOffset = #{offset struct VkStencilOpState, passOp}

instance Offset "depthFailOp" VkStencilOpState where
  rawOffset = #{offset struct VkStencilOpState, depthFailOp}

instance Offset "compareOp" VkStencilOpState where
  rawOffset = #{offset struct VkStencilOpState, compareOp}

instance Offset "compareMask" VkStencilOpState where
  rawOffset = #{offset struct VkStencilOpState, compareMask}

instance Offset "writeMask" VkStencilOpState where
  rawOffset = #{offset struct VkStencilOpState, writeMask}

instance Offset "reference" VkStencilOpState where
  rawOffset = #{offset struct VkStencilOpState, reference}