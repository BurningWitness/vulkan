{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_conditional_rendering

module Vulkan.Types.Struct.VkCommandBufferInheritanceConditionalRenderingInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkCommandBufferInheritanceConditionalRenderingInfoEXT" #-} VkCommandBufferInheritanceConditionalRenderingInfoEXT =
       VkCommandBufferInheritanceConditionalRenderingInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , conditionalRenderingEnable :: VkBool32 -- ^ Whether this secondary command buffer may be executed during an active conditional rendering
         }

instance Storable VkCommandBufferInheritanceConditionalRenderingInfoEXT where
  sizeOf    _ = #{size      struct VkCommandBufferInheritanceConditionalRenderingInfoEXT}
  alignment _ = #{alignment struct VkCommandBufferInheritanceConditionalRenderingInfoEXT}

  peek ptr = 
    VkCommandBufferInheritanceConditionalRenderingInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"conditionalRenderingEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"conditionalRenderingEnable" ptr val

instance Offset "sType" VkCommandBufferInheritanceConditionalRenderingInfoEXT where
  rawOffset = #{offset struct VkCommandBufferInheritanceConditionalRenderingInfoEXT, sType}

instance Offset "pNext" VkCommandBufferInheritanceConditionalRenderingInfoEXT where
  rawOffset = #{offset struct VkCommandBufferInheritanceConditionalRenderingInfoEXT, pNext}

instance Offset "conditionalRenderingEnable" VkCommandBufferInheritanceConditionalRenderingInfoEXT where
  rawOffset = #{offset struct VkCommandBufferInheritanceConditionalRenderingInfoEXT, conditionalRenderingEnable}

#else

module Vulkan.Types.Struct.VkCommandBufferInheritanceConditionalRenderingInfoEXT where

#endif