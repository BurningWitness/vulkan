{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Types.Struct.VkVideoEncodeH265SessionParametersAddInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265SessionParametersAddInfoEXT" #-} VkVideoEncodeH265SessionParametersAddInfoEXT =
       VkVideoEncodeH265SessionParametersAddInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stdVPSCount :: #{type uint32_t}
         , pStdVPSs :: Ptr StdVideoH265VideoParameterSet
         , stdSPSCount :: #{type uint32_t}
         , pStdSPSs :: Ptr StdVideoH265SequenceParameterSet
         , stdPPSCount :: #{type uint32_t}
         , pStdPPSs :: Ptr StdVideoH265PictureParameterSet -- ^ List of Picture Parameters associated with the spsStd, above
         }

instance Storable VkVideoEncodeH265SessionParametersAddInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH265SessionParametersAddInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH265SessionParametersAddInfoEXT}

  peek ptr = 
    VkVideoEncodeH265SessionParametersAddInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stdVPSCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStdVPSs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stdSPSCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStdSPSs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stdPPSCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStdPPSs" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stdVPSCount" ptr val
    pokeField @"pStdVPSs" ptr val
    pokeField @"stdSPSCount" ptr val
    pokeField @"pStdSPSs" ptr val
    pokeField @"stdPPSCount" ptr val
    pokeField @"pStdPPSs" ptr val

instance Offset "sType" VkVideoEncodeH265SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersAddInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH265SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersAddInfoEXT, pNext}

instance Offset "stdVPSCount" VkVideoEncodeH265SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersAddInfoEXT, stdVPSCount}

instance Offset "pStdVPSs" VkVideoEncodeH265SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersAddInfoEXT, pStdVPSs}

instance Offset "stdSPSCount" VkVideoEncodeH265SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersAddInfoEXT, stdSPSCount}

instance Offset "pStdSPSs" VkVideoEncodeH265SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersAddInfoEXT, pStdSPSs}

instance Offset "stdPPSCount" VkVideoEncodeH265SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersAddInfoEXT, stdPPSCount}

instance Offset "pStdPPSs" VkVideoEncodeH265SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersAddInfoEXT, pStdPPSs}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265SessionParametersAddInfoEXT where

#endif