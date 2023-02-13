{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_4444_formats

module Vulkan.Types.Struct.VkPhysicalDevice4444FormatsFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevice4444FormatsFeaturesEXT" #-} VkPhysicalDevice4444FormatsFeaturesEXT =
       VkPhysicalDevice4444FormatsFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , formatA4R4G4B4 :: VkBool32
         , formatA4B4G4R4 :: VkBool32
         }

instance Storable VkPhysicalDevice4444FormatsFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDevice4444FormatsFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDevice4444FormatsFeaturesEXT}

  peek ptr = 
    VkPhysicalDevice4444FormatsFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"formatA4R4G4B4" ptr)
       <*> peek (offset @"formatA4B4G4R4" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"formatA4R4G4B4" ptr val
    pokeField @"formatA4B4G4R4" ptr val

instance Offset "sType" VkPhysicalDevice4444FormatsFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevice4444FormatsFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDevice4444FormatsFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevice4444FormatsFeaturesEXT, pNext}

instance Offset "formatA4R4G4B4" VkPhysicalDevice4444FormatsFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevice4444FormatsFeaturesEXT, formatA4R4G4B4}

instance Offset "formatA4B4G4R4" VkPhysicalDevice4444FormatsFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevice4444FormatsFeaturesEXT, formatA4B4G4R4}

#else

module Vulkan.Types.Struct.VkPhysicalDevice4444FormatsFeaturesEXT where

#endif