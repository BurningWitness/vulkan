{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_display_properties2

module Vulkan.Types.Struct.VkDisplayPlaneInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayPlaneInfo2KHR" #-} VkDisplayPlaneInfo2KHR =
       VkDisplayPlaneInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , mode :: VkDisplayModeKHR
         , planeIndex :: #{type uint32_t}
         }

instance Storable VkDisplayPlaneInfo2KHR where
  sizeOf    _ = #{size      VkDisplayPlaneInfo2KHR}
  alignment _ = #{alignment VkDisplayPlaneInfo2KHR}

  peek ptr = 
    VkDisplayPlaneInfo2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"mode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"planeIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"mode" ptr val
    pokeField @"planeIndex" ptr val

instance Offset "sType" VkDisplayPlaneInfo2KHR where
  rawOffset = #{offset VkDisplayPlaneInfo2KHR, sType}

instance Offset "pNext" VkDisplayPlaneInfo2KHR where
  rawOffset = #{offset VkDisplayPlaneInfo2KHR, pNext}

instance Offset "mode" VkDisplayPlaneInfo2KHR where
  rawOffset = #{offset VkDisplayPlaneInfo2KHR, mode}

instance Offset "planeIndex" VkDisplayPlaneInfo2KHR where
  rawOffset = #{offset VkDisplayPlaneInfo2KHR, planeIndex}

#else

module Vulkan.Types.Struct.VkDisplayPlaneInfo2KHR where

#endif