{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_render_pass_transform

module Vulkan.Types.Struct.VkRenderPassTransformBeginInfoQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSurfaceTransformFlagBitsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassTransformBeginInfoQCOM" #-} VkRenderPassTransformBeginInfoQCOM =
       VkRenderPassTransformBeginInfoQCOM
         { sType :: VkStructureType
         , pNext :: Ptr () -- ^ Pointer to next structure
         , transform :: VkSurfaceTransformFlagBitsKHR
         }

instance Storable VkRenderPassTransformBeginInfoQCOM where
  sizeOf    _ = #{size      VkRenderPassTransformBeginInfoQCOM}
  alignment _ = #{alignment VkRenderPassTransformBeginInfoQCOM}

  peek ptr = 
    VkRenderPassTransformBeginInfoQCOM
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"transform" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"transform" ptr val

instance Offset "sType" VkRenderPassTransformBeginInfoQCOM where
  rawOffset = #{offset VkRenderPassTransformBeginInfoQCOM, sType}

instance Offset "pNext" VkRenderPassTransformBeginInfoQCOM where
  rawOffset = #{offset VkRenderPassTransformBeginInfoQCOM, pNext}

instance Offset "transform" VkRenderPassTransformBeginInfoQCOM where
  rawOffset = #{offset VkRenderPassTransformBeginInfoQCOM, transform}

#else

module Vulkan.Types.Struct.VkRenderPassTransformBeginInfoQCOM where

#endif