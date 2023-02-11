{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_render_pass_transform

module Vulkan.Types.Struct.VkCommandBufferInheritanceRenderPassTransformInfoQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSurfaceTransformFlagBitsKHR
import Vulkan.Types.Struct.VkRect2D



data {-# CTYPE "vulkan/vulkan.h" "VkCommandBufferInheritanceRenderPassTransformInfoQCOM" #-} VkCommandBufferInheritanceRenderPassTransformInfoQCOM =
       VkCommandBufferInheritanceRenderPassTransformInfoQCOM
         { sType :: VkStructureType
         , pNext :: Ptr () -- ^ Pointer to next structure
         , transform :: VkSurfaceTransformFlagBitsKHR
         , renderArea :: VkRect2D
         }

instance Storable VkCommandBufferInheritanceRenderPassTransformInfoQCOM where
  sizeOf    _ = #{size      struct VkCommandBufferInheritanceRenderPassTransformInfoQCOM}
  alignment _ = #{alignment struct VkCommandBufferInheritanceRenderPassTransformInfoQCOM}

  peek ptr = 
    VkCommandBufferInheritanceRenderPassTransformInfoQCOM
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"transform" ptr)
       <*> peek (offset @"renderArea" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"transform" ptr val
    pokeField @"renderArea" ptr val

instance Offset "sType" VkCommandBufferInheritanceRenderPassTransformInfoQCOM where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderPassTransformInfoQCOM, sType}

instance Offset "pNext" VkCommandBufferInheritanceRenderPassTransformInfoQCOM where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderPassTransformInfoQCOM, pNext}

instance Offset "transform" VkCommandBufferInheritanceRenderPassTransformInfoQCOM where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderPassTransformInfoQCOM, transform}

instance Offset "renderArea" VkCommandBufferInheritanceRenderPassTransformInfoQCOM where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderPassTransformInfoQCOM, renderArea}

#else

module Vulkan.Types.Struct.VkCommandBufferInheritanceRenderPassTransformInfoQCOM where

#endif