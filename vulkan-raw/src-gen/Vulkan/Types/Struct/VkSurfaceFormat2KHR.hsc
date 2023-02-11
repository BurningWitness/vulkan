{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_surface_capabilities2

module Vulkan.Types.Struct.VkSurfaceFormat2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSurfaceFormatKHR



data {-# CTYPE "vulkan/vulkan.h" "VkSurfaceFormat2KHR" #-} VkSurfaceFormat2KHR =
       VkSurfaceFormat2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , surfaceFormat :: VkSurfaceFormatKHR
         }

instance Storable VkSurfaceFormat2KHR where
  sizeOf    _ = #{size      struct VkSurfaceFormat2KHR}
  alignment _ = #{alignment struct VkSurfaceFormat2KHR}

  peek ptr = 
    VkSurfaceFormat2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"surfaceFormat" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"surfaceFormat" ptr val

instance Offset "sType" VkSurfaceFormat2KHR where
  rawOffset = #{offset struct VkSurfaceFormat2KHR, sType}

instance Offset "pNext" VkSurfaceFormat2KHR where
  rawOffset = #{offset struct VkSurfaceFormat2KHR, pNext}

instance Offset "surfaceFormat" VkSurfaceFormat2KHR where
  rawOffset = #{offset struct VkSurfaceFormat2KHR, surfaceFormat}

#else

module Vulkan.Types.Struct.VkSurfaceFormat2KHR where

#endif