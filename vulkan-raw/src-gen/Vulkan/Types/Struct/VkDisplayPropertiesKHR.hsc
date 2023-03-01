{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Struct.VkDisplayPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkSurfaceTransformFlagsKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayPropertiesKHR" #-} VkDisplayPropertiesKHR =
       VkDisplayPropertiesKHR
         { display :: VkDisplayKHR -- ^ Handle of the display object
         , displayName :: Ptr #{type char} -- ^ Name of the display
         , physicalDimensions :: VkExtent2D -- ^ In millimeters?
         , physicalResolution :: VkExtent2D -- ^ Max resolution for CRT?
         , supportedTransforms :: VkSurfaceTransformFlagsKHR -- ^ one or more bits from VkSurfaceTransformFlagsKHR
         , planeReorderPossible :: VkBool32 -- ^ VK_TRUE if the overlay plane's z-order can be changed on this display.
         , persistentContent :: VkBool32 -- ^ VK_TRUE if this is a "smart" display that supports self-refresh/internal buffering.
         }

instance Storable VkDisplayPropertiesKHR where
  sizeOf    _ = #{size      VkDisplayPropertiesKHR}
  alignment _ = #{alignment VkDisplayPropertiesKHR}

  peek ptr = 
    VkDisplayPropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"display" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"displayName" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"physicalDimensions" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"physicalResolution" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportedTransforms" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"planeReorderPossible" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"persistentContent" ptr)

  poke ptr val = do
    pokeField @"display" ptr val
    pokeField @"displayName" ptr val
    pokeField @"physicalDimensions" ptr val
    pokeField @"physicalResolution" ptr val
    pokeField @"supportedTransforms" ptr val
    pokeField @"planeReorderPossible" ptr val
    pokeField @"persistentContent" ptr val

instance Offset "display" VkDisplayPropertiesKHR where
  rawOffset = #{offset VkDisplayPropertiesKHR, display}

instance Offset "displayName" VkDisplayPropertiesKHR where
  rawOffset = #{offset VkDisplayPropertiesKHR, displayName}

instance Offset "physicalDimensions" VkDisplayPropertiesKHR where
  rawOffset = #{offset VkDisplayPropertiesKHR, physicalDimensions}

instance Offset "physicalResolution" VkDisplayPropertiesKHR where
  rawOffset = #{offset VkDisplayPropertiesKHR, physicalResolution}

instance Offset "supportedTransforms" VkDisplayPropertiesKHR where
  rawOffset = #{offset VkDisplayPropertiesKHR, supportedTransforms}

instance Offset "planeReorderPossible" VkDisplayPropertiesKHR where
  rawOffset = #{offset VkDisplayPropertiesKHR, planeReorderPossible}

instance Offset "persistentContent" VkDisplayPropertiesKHR where
  rawOffset = #{offset VkDisplayPropertiesKHR, persistentContent}

#else

module Vulkan.Types.Struct.VkDisplayPropertiesKHR where

#endif