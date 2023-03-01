{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_image_processing

module Vulkan.Types.Struct.VkPhysicalDeviceImageProcessingFeaturesQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImageProcessingFeaturesQCOM" #-} VkPhysicalDeviceImageProcessingFeaturesQCOM =
       VkPhysicalDeviceImageProcessingFeaturesQCOM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , textureSampleWeighted :: VkBool32
         , textureBoxFilter :: VkBool32
         , textureBlockMatch :: VkBool32
         }

instance Storable VkPhysicalDeviceImageProcessingFeaturesQCOM where
  sizeOf    _ = #{size      VkPhysicalDeviceImageProcessingFeaturesQCOM}
  alignment _ = #{alignment VkPhysicalDeviceImageProcessingFeaturesQCOM}

  peek ptr = 
    VkPhysicalDeviceImageProcessingFeaturesQCOM
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"textureSampleWeighted" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"textureBoxFilter" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"textureBlockMatch" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"textureSampleWeighted" ptr val
    pokeField @"textureBoxFilter" ptr val
    pokeField @"textureBlockMatch" ptr val

instance Offset "sType" VkPhysicalDeviceImageProcessingFeaturesQCOM where
  rawOffset = #{offset VkPhysicalDeviceImageProcessingFeaturesQCOM, sType}

instance Offset "pNext" VkPhysicalDeviceImageProcessingFeaturesQCOM where
  rawOffset = #{offset VkPhysicalDeviceImageProcessingFeaturesQCOM, pNext}

instance Offset "textureSampleWeighted" VkPhysicalDeviceImageProcessingFeaturesQCOM where
  rawOffset = #{offset VkPhysicalDeviceImageProcessingFeaturesQCOM, textureSampleWeighted}

instance Offset "textureBoxFilter" VkPhysicalDeviceImageProcessingFeaturesQCOM where
  rawOffset = #{offset VkPhysicalDeviceImageProcessingFeaturesQCOM, textureBoxFilter}

instance Offset "textureBlockMatch" VkPhysicalDeviceImageProcessingFeaturesQCOM where
  rawOffset = #{offset VkPhysicalDeviceImageProcessingFeaturesQCOM, textureBlockMatch}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImageProcessingFeaturesQCOM where

#endif