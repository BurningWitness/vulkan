{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_filter_cubic

module Vulkan.Types.Struct.VkFilterCubicImageViewImageFormatPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkFilterCubicImageViewImageFormatPropertiesEXT" #-} VkFilterCubicImageViewImageFormatPropertiesEXT =
       VkFilterCubicImageViewImageFormatPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , filterCubic :: VkBool32 -- ^ The combinations of format, image type (and image view type if provided) can be filtered with VK_FILTER_CUBIC_EXT
         , filterCubicMinmax :: VkBool32 -- ^ The combination of format, image type (and image view type if provided) can be filtered with VK_FILTER_CUBIC_EXT and ReductionMode of Min or Max
         }

instance Storable VkFilterCubicImageViewImageFormatPropertiesEXT where
  sizeOf    _ = #{size      struct VkFilterCubicImageViewImageFormatPropertiesEXT}
  alignment _ = #{alignment struct VkFilterCubicImageViewImageFormatPropertiesEXT}

  peek ptr = 
    VkFilterCubicImageViewImageFormatPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"filterCubic" ptr)
       <*> peek (offset @"filterCubicMinmax" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"filterCubic" ptr val
    pokeField @"filterCubicMinmax" ptr val

instance Offset "sType" VkFilterCubicImageViewImageFormatPropertiesEXT where
  rawOffset = #{offset struct VkFilterCubicImageViewImageFormatPropertiesEXT, sType}

instance Offset "pNext" VkFilterCubicImageViewImageFormatPropertiesEXT where
  rawOffset = #{offset struct VkFilterCubicImageViewImageFormatPropertiesEXT, pNext}

instance Offset "filterCubic" VkFilterCubicImageViewImageFormatPropertiesEXT where
  rawOffset = #{offset struct VkFilterCubicImageViewImageFormatPropertiesEXT, filterCubic}

instance Offset "filterCubicMinmax" VkFilterCubicImageViewImageFormatPropertiesEXT where
  rawOffset = #{offset struct VkFilterCubicImageViewImageFormatPropertiesEXT, filterCubicMinmax}

#else

module Vulkan.Types.Struct.VkFilterCubicImageViewImageFormatPropertiesEXT where

#endif